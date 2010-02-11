class ProductosController < ApplicationController
  before_filter :login_required, :except => [:show, :index] 
  before_filter :busca_producto, :except => [:index, :create, :new]
  
  def index
    @productos = Producto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @productos }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @producto }
    end
  end

  def new
    @producto = Producto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @producto }
    end
  end

  def edit
  end

  def create
    @producto = Producto.new(params[:producto])

    respond_to do |format|
      if @producto.save
        flash[:notice] = 'Producto was successfully created.'
        format.html { redirect_to(@producto) }
        format.xml  { render :xml => @producto, :status => :created, :location => @producto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @producto.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @producto.update_attributes(params[:producto])
        flash[:notice] = 'Producto was successfully updated.'
        format.html { redirect_to(@producto) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @producto.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @producto.destroy
    respond_to do |format|
      format.html { redirect_to(productos_url) }
      format.xml  { head :ok }
    end
  end
  
  def busca_producto
    @producto = Producto.find(params[:id])
  end
  
end