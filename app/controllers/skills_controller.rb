class SkillsController < ApplicationController
  before_action :set_skill, only: [:edit, :show, :update, :destroy]
  access site_admin: :all
  

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(skill_params)
    
    respond_to do |format|
      if @skill.save
        format.html { redirect_to about_me_path, notice: 'Your skill has been added.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @skill.update(skill_params)
        format.html { redirect_to about_me_path, notice: 'The skill successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def show
  end

  def destroy
    # Destroy/delete the record
    @skill.destroy

    # Redirect
    respond_to do |format|
      format.html { redirect_to about_me_path, notice: 'Skill was removed.' }
    end
  end

  private

  def skill_params
    params.require(:skill).permit(:title, :percent_utilized )
  end

  def set_skill
    @skill = Skill.find(params[:id])
  end
end
