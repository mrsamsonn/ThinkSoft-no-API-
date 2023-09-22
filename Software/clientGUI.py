import customtkinter 

customtkinter.set_appearance_mode("dark")
customtkinter.set_default_color_theme("dark-blue")

root = customtkinter.CTk()
root.geometry("1200x800")

def login():
    print("Test")

frame = customtkinter.CTkFrame(master=root)
frame.pack(pady=60, padx=60, fill="both", expand=True)

label = customtkinter.CTkLabel(master=frame, text="ThinkSoft", font=("Roman", 40))
label.pack(pady=40, padx=10)

entry1 = customtkinter.CTkEntry(master=frame, placeholder_text="Initial")
entry1.pack(pady=12, padx=10)

entry2 = customtkinter.CTkEntry(master=frame, placeholder_text="ID", show="*")
entry2.pack(pady=12, padx=10)

button = customtkinter.CTkButton(master=frame, text="IQ Reseller Process", command=login)
button.pack(pady=12, padx=10)

tabview = customtkinter.CTkTabview(master=root)
tabview.pack(padx=20, pady=20)

tabview.add("M1/M2")
tabview.add("Mac")
tabview.add("Windows")
tabview.add("Chromebook")
tabview.set("M1/M2")
tabview.set("Mac")
tabview.set("Windows")
tabview.set("Chromebook")

button_1 = customtkinter.CTkButton(tabview.tab("M1/M2"))
button_2 = customtkinter.CTkButton(tabview.tab("Mac"))
button_3 = customtkinter.CTkButton(tabview.tab("Windows"))
button_4 = customtkinter.CTkButton(tabview.tab("Chromebook"))
button.pack(padx=10, pady=10)

textbox = customtkinter.CTkTextbox(master=root)
textbox.pack(padx=10, pady=10)

textbox.insert("0.0", "When I say Think, you say Soft. Think... SOFTTTTTTT")  
text = textbox.get("0.0", "end")  

textbox.configure(state="disabled") 
root.mainloop()