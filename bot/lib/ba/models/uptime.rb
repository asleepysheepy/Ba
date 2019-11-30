# frozen_string_literal: false

module Ba
  module Models
    class Uptime
      attr_accessor :start_time, :current_time, :seconds, :minutes, :hours, :days

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
        ''.tap do |time_string|
          time_string << "#{@days} #{self.class.pluralize 'day', @days}, "
          time_string << "#{@hours} #{self.class.pluralize 'hour', @hours}, "
          time_string << "#{@minutes} #{self.class.pluralize 'minute', @minutes}"
          time_string << ', and '
          time_string << "#{@seconds} #{self.class.pluralize 'second', @seconds}"
        end
      end

      def self.pluralize(word, value)
        return word if value == 1

        "#{word}s"
      end
    end
  end
end
