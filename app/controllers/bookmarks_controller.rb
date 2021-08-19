class BookmarksController < ApplicationController
  def new
    # we need @list in our `simple_form_for`
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    # we need `list_id` to associate bookmark with corresponding list
    @list = List.find(params[:list_id])
    @bookmark.list = @list
     if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new # for errors of validation. With render :new, unlike redirect_to, you can show a new page again without reset of form values. It's pretty useful in the aspect of UX.
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id) #
  end
end
