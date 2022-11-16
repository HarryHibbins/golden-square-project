require "diary"
require "diary_entry"
require "todo"
require "todo_list"
require "contact"
require "contacts"

RSpec.describe "integration" do 
    context "after adding some diary entries" do
        it "should show them all" do
            diary = Diary.new()
            diary_entry_1 = DiaryEntry.new("first diary entry")
            diary_entry_2 = DiaryEntry.new("second diary entry")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.show_all).to eq [diary_entry_1, diary_entry_2]
        end
    end

    context "when there are multiple entries" do
        it "displays the most suitable entry for the amount of time" do
            diary = Diary.new()
            most_suitable_entry = DiaryEntry.new("one two three four five")
            diary_entry_2 = DiaryEntry.new("one")
            diary_entry_3 = DiaryEntry.new("1 2 3 4 5 6 7 8 9 10")
            diary.add(most_suitable_entry)
            diary.add(diary_entry_2)
            diary.add(diary_entry_3)
            result = diary.show_entry_based_on_time(5, 1)
            expect(result).to eq most_suitable_entry
        end
    end

    context "given multiple todos in a todo list" do
        it "should show them all" do
            todo_list = TodoList.new()
            todo_1 = Todo.new("first task")
            todo_2 = Todo.new("second task")
            todo_list.add(todo_1)
            todo_list.add(todo_2)
            expect(todo_list.show_all()).to eq [todo_1, todo_2]
            expect(todo_list.show_incomplete()).to eq [todo_1, todo_2]
       
        end
    end

    context "given some todos that are complete and some that are not" do
        it "shows only the complete ones in the complete list visa vera" do
            todo_list = TodoList.new()
            todo_1 = Todo.new("first task")
            todo_2 = Todo.new("second task")
            todo_list.add(todo_1)
            todo_list.add(todo_2)
            todo_1.complete_task()
            expect(todo_list.show_all()).to eq [todo_1, todo_2]
            expect(todo_list.show_incomplete()).to eq [todo_2]
            expect(todo_list.show_complete()).to eq [todo_1]
        end
    end

    context "given a list of contacts" do
        it "should display the diary entries, then the contacts" do
            diary = Diary.new()
            contact_1 = Contact.new("person 1", "123")
            contact_2 = Contact.new("person 2", "456")
            diary.add_contact(contact_1)
            diary.add_contact(contact_2)
            diary_entry_1 = DiaryEntry.new("first diary entry")
            diary_entry_2 = DiaryEntry.new("second diary entry")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            expect(diary.show_all).to eq [diary_entry_1, diary_entry_2, contact_1, contact_2]
        end
    end

    context "given a contact" do
        it "should be viewed in a contacts list" do
            diary = Diary.new()
            contact_1 = Contact.new("person 1", "123")
            contact_2 = Contact.new("person 2", "456")
            diary.add_contact(contact_1)
            diary.add_contact(contact_2)
            expect(diary.show_all_contacts()).to eq [contact_1, contact_2]

        end
    end
end