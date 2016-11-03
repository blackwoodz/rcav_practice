Rails.application.routes.draw do
  get("/", { :controller => "calculations", :action => "instructions" })
  get("/square/:num", { :controller => "calculations", :action => "square" })
  get("/square_root/:num", { :controller => "calculations", :action => "sqrt" })
  get("/random/:min/:max", { :controller => "calculations", :action => "rand" })
  get("/payment/:interest/:years/:principal", { :controller => "calculations", :action => "payment" })

end
