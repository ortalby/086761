

    figure(7)
    image(I1)
    h1 = vl_plotframe(f1(:,representative)) ;
    h2 = vl_plotframe(f1(:,representative)) ;
    set(h1,'color','k','linewidth',3) ;
    set(h2,'color','y','linewidth',2) ;
    h3 = vl_plotsiftdescriptor(d1(:,representative),f1(:,representative)) ;
    set(h3,'color','g') ;