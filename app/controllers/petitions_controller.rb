class PetitionsController < ApplicationController

    def index
      list
      render('list')
    end

    def list
      @petitions = Petition.order("petitions.position ASC")
    end

    def show
      @petitions = Petition.find(params[:id])
    end

    def new
      @petition = Petition.new
      @petition_count = Petition.count + 1
    end

    def create
      @petition = Petition.new(params[:petition])
      if @petition.save
        flash[:notice] = "Thanks for your support!"
        redirect_to('/support')
      else
        @petition_count = Petition.count + 1
        render('new')
      end
    end

    def edit

    end

    def update
  
    end

    def delete
    end

    def destroy
    end


end
