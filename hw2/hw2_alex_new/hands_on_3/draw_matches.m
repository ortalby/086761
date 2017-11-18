if vizualize_matches
    
    fig_3 = figure(3);
    set(fig_3, 'position', [300, 300, 1200, 450] );
    subplot(1,2,1)
    %figure(3)
    image(I1)
    h1 = vl_plotframe(f1_matched) ;
    h2 = vl_plotframe(f1_matched) ;
    set(h1,'color','k','linewidth',3) ;
    set(h2,'color','y','linewidth',2) ;
    h3 = vl_plotsiftdescriptor(d1_matched,f1_matched) ;
    set(h3,'color','g') ;
    
    subplot(1,2,2)
    %figure(4)
    image(I2)
    h1 = vl_plotframe(f2_matched) ;
    h2 = vl_plotframe(f2_matched) ;
    set(h1,'color','k','linewidth',3) ;
    set(h2,'color','y','linewidth',2) ;
    h3 = vl_plotsiftdescriptor(d2_matched,f2_matched) ;
    set(h3,'color','g') ;
end
