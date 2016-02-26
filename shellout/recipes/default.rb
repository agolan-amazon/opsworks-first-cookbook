script_file = file "/tmp/shellout" do
  content node["shellout"]["code"]
  owner node["shellout"]["user"]
  mode 0700
end

execute "shellout" do
  command "/tmp/shellout"
end
