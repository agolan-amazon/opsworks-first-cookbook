script_file = file "/tmp/shellout" do
  content node["shellout"]["code"]
  owner node["shellout"]["user"]
  mode 0700
end

ruby_block "shellout" do
  block do
    Chef::Log.info shell_out("/tmp/shellout").stdout
  end
end
