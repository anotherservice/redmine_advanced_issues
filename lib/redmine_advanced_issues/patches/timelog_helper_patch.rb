# Redmine advanced issues - Plugin improve time entry
# Copyright (C) 2012  Yann Autissier
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

require 'redmine_advanced_issues/time_management'

module RedmineAdvancedIssues
  module Patches
    module TimelogHelperPatch

      def time(hours)
        return RedmineAdvancedIssues::TimeManagement.calculate hours, Setting.plugin_redmine_advanced_issues['default_unit']
      end #time(hours)

      def default_unit_time
        return RedmineAdvancedIssues::TimeManagement.getDefaultTimeUnit(Setting.plugin_redmine_advanced_issues['default_unit'])
      end #default_unit_time

    end #TimelogHelperPatch
  end #Patches
end #RedmineAdvancedIssues

