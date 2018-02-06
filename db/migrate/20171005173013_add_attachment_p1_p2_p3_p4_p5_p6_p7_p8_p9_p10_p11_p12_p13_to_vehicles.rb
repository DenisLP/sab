class AddAttachmentP1P2P3P4P5P6P7P8P9P10P11P12P13ToVehicles < ActiveRecord::Migration
  def self.up
    change_table :vehicles do |t|
      t.attachment :p1
      t.attachment :p2
      t.attachment :p3
      t.attachment :p4
      t.attachment :p5
      t.attachment :p6
      t.attachment :p7
      t.attachment :p8
      t.attachment :p9
      t.attachment :p10
      t.attachment :p11
      t.attachment :p12
      t.attachment :p13
    end
  end

  def self.down
    remove_attachment :vehicles, :p1
    remove_attachment :vehicles, :p2
    remove_attachment :vehicles, :p3
    remove_attachment :vehicles, :p4
    remove_attachment :vehicles, :p5
    remove_attachment :vehicles, :p6
    remove_attachment :vehicles, :p7
    remove_attachment :vehicles, :p8
    remove_attachment :vehicles, :p9
    remove_attachment :vehicles, :p10
    remove_attachment :vehicles, :p11
    remove_attachment :vehicles, :p12
    remove_attachment :vehicles, :p13
  end
end
