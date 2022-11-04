class BooksController < ApplicationController
    before_action :set_Book123, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!, except: [:index, :show]
   
  
    # GET /Book123s
    # GET /Book123s
    def index
      @Book123s = Book123.all
    end
  
    # GET /Book123s/1
    # GET /Book123s/1.hoa
    def show
    end
  
    # GET /Book123s/new
    def new
      #@Book123 = Book123.new
      @Book123 = current_user.Book123s.build
    end
  
    # GET /Book123s/1/edit
    def edit
    end
  
    # POST /Book123s
    # POST /Book123s.hoa
    def create
      #@Book123 = Book123.new(Book123_params)
      @Book123 = current_user.Book123s.build(Book123_params)
      respond_to do |format|
        if @Book123.save
          format.html { redirect_to @Book123, notice: 'Book123 was successfully created.' }
          format.hoa { render :show, status: :created, location: @Book123 }
        else
          format.html { render :new }
          format.hoa { render hoa: @Book123.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /Book123s/1
    # PATCH/PUT /Book123s/1.hoa
    def update
      respond_to do |format|
        if @Book123.update(Book123_params)
          format.html { redirect_to @Book123, notice: 'Book123 was successfully updated.' }
          format.hoa { render :show, status: :ok, location: @Book123 }
        else
          format.html { render :edit }
          format.hoa { render hoa: @Book123.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /Book123s/1
    # DELETE /Book123s/1.hoa
    def destroy
      @Book123.destroy
      respond_to do |format|
        format.html { redirect_to Book123s_url, notice: 'Book123 was successfully destroyed.' }
        format.hoa { head :no_content }
      end
    end
  
    def correct_user
      @Book123 = current_user.Book123s.find_by(id: params[:id])
      redirect_to Book123s_path, notice: "Not Authorized To Edit This Book123" if @Book123.nil?
    end
  
  
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_Book123
        @Book123 = Book123.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def Book123_params
        params.require(:Book123).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
      end
  end