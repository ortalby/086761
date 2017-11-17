if vizualize_matches

    figure(3)
    image(I1)
    h1 = vl_plotframe(f1_matched) ;
    h2 = vl_plotframe(f1_matched) ;
    set(h1,'color','k','linewidth',3) ;
    set(h2,'color','y','linewidth',2) ;
    h3 = vl_plotsiftdescriptor(d1_matched,f1_matched) ;
    set(h3,'color','g') ;
    
    figure(4)
    image(I2)
    h1 = vl_plotframe(f2_matched) ;
    h2 = vl_plotframe(f2_matched) ;
    set(h1,'color','k','linewidth',3) ;
    set(h2,'color','y','linewidth',2) ;
    h3 = vl_plotsiftdescriptor(d2_matched,f2_matched) ;
    set(h3,'color','g') ;
end
