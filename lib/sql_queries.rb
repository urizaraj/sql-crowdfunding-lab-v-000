# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_name
'select title, sum(pledges.amount) from projects left join pledges on projects.id = pledges.project_id group by title order by title asc'
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
'select name, age, sum(pledges.amount) from users left join pledges on users.id = pledges.user_id group by name order by name asc'
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  'SELECT title, SUM(pledges.amount) - funding_goal FROM projects LEFT JOIN pledges ON projects.id = pledges.project_id GROUP BY title HAVING SUM(pledges.amount) >= funding_goal'
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount_and_users_name
  %w[
    SELECT name, SUM(pledges.amount)
    FROM users
    LEFT JOIN pledges
    ON users.id = pledges.user_id
    GROUP BY name
    ORDER BY SUM(pledges.amount) ASC, name ASC
  ].join(' ')
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  %w[
    SELECT projects.category, amount
    FROM pledges
    LEFT JOIN projects
    ON pledges.project_id = projects.id
    WHERE projects.category = "music"
  ].join(' ')
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  %w[
    SELECT projects.category, SUM(amount)
    FROM pledges
    LEFT JOIN projects
    ON pledges.project_id = projects.id
    WHERE projects.category = "books"
  ].join(' ')
end
