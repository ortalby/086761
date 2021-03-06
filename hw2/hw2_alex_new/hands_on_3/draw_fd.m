if vizualize_fd
    perm = randperm(size(f1,2)) ;
    sel = perm(1:50) ;
    figure(1)
    image(I1)
    h1 = vl_plotframe(f1(:,sel)) ;
    h2 = vl_plotframe(f1(:,sel)) ;
    set(h1,'color','k','linewidth',3) ;
    set(h2,'color','y','linewidth',2) ;
    h3 = vl_plotsiftdescriptor(d1(:,sel),f1(:,sel)) ;
    set(h3,'color','g') ;
    
    perm = randperm(size(f2,2)) ;
    sel = perm(1:50) ;
    figure(2)
    image(I2)
    h1 = vl_plotframe(f2(:,sel)) ;
    h2 = vl_plotframe(f2(:,sel)) ;
    set(h1,'color','k','linewidth',3) ;
    set(h2,'color','y','linewidth',2) ;
    h3 = vl_plotsiftdescriptor(d2(:,sel),f2(:,sel)) ;
    set(h3,'color','g') ;
end
