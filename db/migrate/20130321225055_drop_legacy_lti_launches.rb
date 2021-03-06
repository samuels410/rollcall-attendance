#
# Copyright (C) 2014 - present Instructure, Inc.
#
# This file is part of Rollcall.
#
# Rollcall is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Rollcall is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.

class DropLegacyLtiLaunches < ActiveRecord::Migration
  def up
    drop_table :launches
  end

  def down
    create_table "launches", :force => true do |t|
      t.integer  "course_id",  :limit => 8
      t.integer  "account_id", :limit => 8
      t.string   "canvas_url"
      t.integer  "user_id",    :limit => 8
      t.string   "nonce"
      t.datetime "created_at",              :null => false
      t.datetime "updated_at",              :null => false
    end
  end
end
