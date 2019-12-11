crumb :products do
  link "メルカリ", root_path
end

crumb :user do
  link "マイページ", user_path
  parent :products
end

crumb :exhibit do
  link "出品した商品-出品中", "/users/#{current_user.id}/mypagemore"
  parent :user
end

crumb :myproduct do
  link "出品中", myproduct_product_path
  parent :exhibit 
end

crumb :profile do
  link "プロフィール", profile_user_path
  parent :user
end

crumb :logout do
  link "ログアウト", logout_user_path
  parent :user
end

crumb :edit do
  link "本人情報の登録", edit_address_path
  parent :user
end

crumb :soldout do
  link "出品した商品-売却済み",soldout_user_path
  parent :user
end

crumb :card do
  link "支払い方法",user_card_index_path
  parent :products
end


# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).