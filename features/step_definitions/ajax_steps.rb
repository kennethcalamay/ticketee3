When /^I wait untill all Ajax requests are complete$/ do
  wait_until do
    page.evaluate_script('$.active') == 0
  end
end
