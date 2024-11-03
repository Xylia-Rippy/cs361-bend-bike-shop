# Exercise 5

class LaunchDiscussionWorkflow
  attr_reader :discussion, :host, :participants_email_string, :participants, :successful

  def initialize(discussion, host, participants_email_string)
    @discussion = discussion
    @host = host
    @participants_email_string = participants_email_string
    @participants = []
    @successful = false
  end

  # Primary method for launching the discussion
  def run
    return unless valid?

    @participants = generate_participant_users
    save_discussion_with_roles
  end

  private

  # Generate User objects for each participant email and set the @participants array
  def generate_participant_users
    return [] if participants_email_string.blank?
    
    participants_email_string.split.uniq.map do |email|
      create_user_from_email(email)
    end
  end

  # Method to create a User instance for a given email
  def create_user_from_email(email)
    User.create(email: email.downcase, password: generate_password)
  end

  # Generate a password using Devise's token generator
  def generate_password
    Devise.friendly_token
  end

  # Validate required conditions before running
  def valid?
    discussion.present? && host.present? && participants_email_string.present?
  end

  # Wraps the process of saving the discussion and creating roles in a transaction
  def save_discussion_with_roles
    run_callbacks(:create) do
      ActiveRecord::Base.transaction do
        discussion.save!
        create_discussion_roles
        mark_successful
      end
    end
  end

  # Mark the workflow as successful
  def mark_successful
    @successful = true
  end

  # Creates roles for the discussion
  def create_discussion_roles
    # Assuming this method assigns roles to host and participants in the discussion
    DiscussionRole.create_roles(discussion, host, participants)
  end
end

# Usage
discussion = Discussion.new(title: "fake", ...)  # Discussion object instantiation
host = User.find(42)                             # Host user fetched from DB
participants = "fake1@example.com\nfake2@example.com\nfake3@example.com"

workflow = LaunchDiscussionWorkflow.new(discussion, host, participants)
workflow.run
