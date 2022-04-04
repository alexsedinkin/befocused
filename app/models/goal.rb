
class Goal < ApplicationRecord
    validates :title, 
        length: { maximum: 80, too_long: "%{count} characters is the maximum allowed" }, 
        format: { with: /\W/, 
            message: "please enter valid symbols" },
        presence: true
    validates :descr, 
        length: { maximum: 500, too_long: "%{count} characters is the maximum allowed" }, 
        format: { with: /\W/, 
            message: "please enter valid symbols" },
        presence: true
    validates :due_date, presence: true

    scope :by_status, ->(s=nil) { s.nil? ? all : where(completed: s) }

    def priority_name 
        %w[Low Medium High][priority]
    end

    def priority_icon
        arr_ico = %w[bi-arrow-down bi-arrow-up bi-arrow-up]
        arr_ico_col = %w[blue yellow red]
        "<i class=\"bi #{arr_ico[priority]}\" style=\"color: #{arr_ico_col[priority]};\"></i>".html_safe
    end

    def status_icon
        arr_ico = %w[bi-check-circle bi-check-circle-fill]
        "<i class=\"bi #{arr_ico[completed && 1 || 0]}\" style=\"color: #{completed ? 'green' : ''};\"></i>".html_safe
    end
end
