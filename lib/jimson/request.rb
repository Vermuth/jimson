module Jimson
  class Request
    attr_accessor :method, :params, :id
    def initialize(method, params, id = nil)
      @method = method
      @params = params
      @id = id
    end

    def to_h
      {
        'jsonrpc' => '2.0',
        'method'  => @method
      }.tap do |h|
        h['params'] = @params if !!@params && !params.empty?
        h['id'] = id
      end
    end

    def to_json(_options)
      MultiJson.encode(to_h)
    end
  end
end
