require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "add a false task from a fake method" do
    task_list = TaskList.new
    task = double :task, complete?: false
    task_list.add(task)
    expect(task_list.all_complete?).to eq false
  end

  it "add a completed few task from a fake method" do
    task_list = TaskList.new
    task = double :task, complete?: false
    task2 = double :task, complete?: false
    task3 = double :task, complete?: true

    task_list.add(task)
    task_list.add(task2)
    task_list.add(task3)

    expect(task_list.all_complete?).to eq false
  end

  # Unit test `#all` and `#all_complete?` behaviour
end
