# frozen_string_literal: false

module Ba
  module BaSupport
    class Uptime
      attr_reader :start_time
      attr_reader :current_time
      attr_reader :seconds
      attr_reader :minutes
      attr_reader :hours
      attr_reader :days

      def initialize(start_time, current_time)
        @start_time = start_time
        @current_time = current_time
        calculate_uptime
      end

      def calculate_uptime
        time_difference = (@current_time - @start_time).floor
        @seconds = time_difference % 60
        @minutes = time_difference / 60 % 60
        @hours = time_difference / (60 * 60) % 24
        @days = time_difference / (60 * 60 * 24)
      end

      def humanize
        time_string = ''
        time_string << "#{@days} #{self.class.pluralize 'day', @days}, "
        time_string << "#{@hours} #{self.class.pluralize 'hour', @hours}, "
        time_string << "#{@minutes} #{self.class.pluralize 'minute', @minutes}"
        time_string << ', and '
        time_string << "#{@seconds} #{self.class.pluralize 'second', @seconds}"
        time_string
      end

      def self.pluralize(word, value)
        return word if value == 1
        "#{word}s"
      end
    end
  end
end
