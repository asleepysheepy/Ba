# frozen_string_literal: true

module JsonHelper
  def json_body
    if @last_response && @last_response == response
      @json_body
    else
      @last_response = response
      @json_body = JSON.parse(response.body)&.deep_symbolize_keys
    end
  end

  def expected_json(object, serializer_klass, options = {})
    expected_json_hash(object, serializer_klass, options).to_json
  end

  def expected_json_hash(object, serializer_klass, options = {})
    serializer_klass.new(object).serializable_hash(options).deep_stringify_keys
  end
end
