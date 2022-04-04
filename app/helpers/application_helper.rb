module ApplicationHelper
    def goal_status_btn(goal)
        btn = "<button type=\"button\" class=\"bi bi-check-circle btn #{goal.completed ? 'btn-primary' : 'btn-secondary'}\"
                data-goal-target=\"elementToInvert\"
                data-goal-completed-param=\"#{goal.completed}\"
                data-goal-url-param=\"#{goal_complete_path(goal)}\"
                data-action=\"goal#status\">#{goal.completed ? ' Completed' : ' Mark Complete'}</button>"
        btn.html_safe
    end
end