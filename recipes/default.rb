#
# Cookbook Name:: bash_profile
# Recipe:: default
#
# Copyright (C) 2013 Eugenio Marzo
# 
# All rights reserved - Do Not Redistribute
#

if node['bash_profile']['flag'] == true
    
    node['bash_profile']['users'].each do |u|

      node['bash_profile']['vars'].keys.each do |mykey|
       
         f = File.new("/home/#{u}/.bash_profile")
         text = f.read
         if not text =~ /#{mykey}/
           open("/home/#{u}/.bash_profile", 'a') do |f|
 	   f << "export #{mykey}=#{node['bash_profile']['vars'][mykey]}  \n"
           end
         f.close
         end         
      end 
    end
end
