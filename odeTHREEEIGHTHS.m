   function yout = odeTHREEEIGHTHS(F,t0,h,tfinal,y0)

   %   
   %  3/8 Runge-Kutta method with fixed step size h on the interval
   %      t0 <= t <= tfinal
   %   to solve
   %      dy/dt = F(t,y)
   %   with y(t0) = y0.

      y = y0;
      yout = y;
      for t = t0 : h : tfinal-h
         s1 = F(t,y);
         s2 = F(t+h/2, y+h*s1/2);
         s3 = F(t+h/2, y+h*s2/2);
         s4 = F(t+h, y+h*s3);
         y = y + h*(s1 + 3*s2 + 3*s3 + s4)/8;
         yout = [yout; y];
      end
