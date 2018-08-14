require 'rails_helper'

RSpec.describe NotesController, type: :controller do
  describe "GET index" do
    # anything should do this, bun idndex is a good place to start
    it "assigns @ident" do
      get :index
      expect(:ident).to_not be(nil)
    end

    it "assigns @notes" do
      get :index
      # what I really want to test here is whether it sets it to be a sane
      # type. Maybe check if it responds to .each ?
      expect(:notes).to be_truthy
    end

    it "renders the index" do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe "GET new" do
    it "renders new" do
      get :new
      expect(response).to render_template('new')
    end
  end

end
