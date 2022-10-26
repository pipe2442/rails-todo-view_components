module ViewHelper
  ADMIN_HELPERS = {
    example: 'ExampleComponent',
    auth_modal: 'AuthModalComponent',
    todo: 'TodoComponent',
    navbar: 'NavbarComponent',
  }.freeze

  ADMIN_HELPERS.each do |name, component|
    define_method name.to_s do |*args, **kwargs, &block|
      render component.constantize.new(*args, **kwargs), &block
    end
  end
end