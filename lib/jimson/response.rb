module Jimson
  class Response
    attr_accessor :result, :error, :id

    def initialize(id)
      @id = id
    end

    def to_h
      { 'jsonrpc' => '2.0' }.tap do |h|
        h['result'] = @result if @result
        h['error'] = @error if @error
        h['id'] = @id
      end
    end

    def failure?
      !@error.nil?
    end

    def success?
      !@result.nil?
    end

    def populate!(data)
      @error = data['error'] if data['error']
      @result = data['result'] if data['result']
    end
  end
end
