class WelcomeController < ApplicationController

def index
  @industries = Industry.all
end
end
