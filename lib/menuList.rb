require "menuList/version"
require "active_record/railtie"

module MenuList

# create



# search

  #获取所有的根节点
  def self.root_nodes
    where("par_id='' or par_id is null").ids
  end

  def self.bother_nodes

  end

# update



# delete



end
