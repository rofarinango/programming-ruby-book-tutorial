class Status
  def self.for(status_string)
    case status_string
    when "done" then DoneStatus.new
    when "started" then StartedStatus.new
    when "defined" then DefinedStatus.new
    end
  end

  def done? = false
  
  def chatty_string = raise NotImplementedError
end

class DoneStatus < Status
  def to_s = "done"
  
  def done? = true
  
  def chatty_string = "I'm done"
end

class StatedStatus < Status
  def to_s = "started"
  
  def chatty_string = "I'm not done"
end

class DefinedStatus < Status
  def to_s = "defined"

  def chatty_string = "I'm not even started"
end

Status.for(task.status).chatty_string
