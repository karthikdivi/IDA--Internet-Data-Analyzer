#!/usr/bin/python
import os
import sys
try:  
	import pygtk  
	pygtk.require("2.0")  
except:  
	pass  
try:  
	import gtk  
	import gtk.glade  
except:  
	print("GTK Not Availible")
	sys.exit(1)


class ida :

	wtree = None
	
	def __init__(self):
		self.wtree=gtk.glade.XML("/root/idaGui.glade")
		
		
		dic = { "on_windowmain_destroy" : self.quit,
			"on_connect_clicked" : self.connect,
			"on_history_clicked" : self.history,
			"on_peakspeed_clicked" : self.peakspeed,
			"on_remain_clicked" : self.remain,
			"on_record_clicked" : self.record,
			"on_transfer_clicked" : self.transfer,
			"on_clear_clicked" : self.clear,
			"on_help_clicked" : self.help,

		      }

		self.wtree.signal_autoconnect( dic )

		gtk.main()

	def quit(self,widget):
		sys.exit(0)

	def connect(self,widget):
		os.system('wvdial&')
	
	def history(self,widget):
		self.wtree.get_widget("windowmain").hide()
		while gtk.events_pending():
			gtk.main_iteration()
		os.system('sh totalmonth.sh')
		self.wtree.get_widget("windowmain").show()

	def peakspeed(self,widget):
		self.wtree.get_widget("windowmain").hide()
		while gtk.events_pending():
			gtk.main_iteration()
		os.system('sh peakspeed.sh')
		self.wtree.get_widget("windowmain").show()

	def remain(self,widget):
		self.wtree.get_widget("windowmain").hide()
		while gtk.events_pending():
			gtk.main_iteration()
		os.system('bash remaining.sh')
		self.wtree.get_widget("windowmain").show()

	def record(self,widget):
		os.system('gnome-terminal -e "bash month.sh"')


	def transfer(self,widget):
		self.wtree.get_widget("windowmain").hide()
		while gtk.events_pending():
			gtk.main_iteration()

		os.system('gnome-terminal -e "bash speed.sh"')
		self.wtree.get_widget("windowmain").show()

	def clear(self,widget):
		self.wtree.get_widget("windowmain").hide()
		while gtk.events_pending():
			gtk.main_iteration()

		os.system('bash clearmonth.sh')
		self.wtree.get_widget("windowmain").show()


	def help(self,widget) :
		self.wtree.get_widget("windowmain").hide()
		while gtk.events_pending():
			gtk.main_iteration()
		os.system('sh help.sh')
		self.wtree.get_widget("windowmain").show()
		


test= ida()
