function pong
    
    
    figure( ...
        'keypressfcn',    @key_down, ...
        'keyreleasefcn',  @key_up, ...
        'closerequestfcn',@close_window, ...
        'menubar', 'none', ...
        'numbertitle', 'off');
    
    axes( ...
        'position', [0, 0, 1, 1], ...
        'color', 'black',  ...
        'xlim', [-10, 10], ...
        'ylim', [-10, 10]);
  
    ball = line( ...
        'color', 'blue',  ...
        'marker', '.', ...
        'markersize',50);
    
    block = line( 'color', 'green', 'linewidth', 7);
    

    ball_pos = [ 5,  5];
    ball_vel = [.1, .1];
    
    block_pos = 0;
    block_vel = 0;

    program_on = true;
    
    while program_on
        

        if abs(ball_pos(1)) > 10
            ball_vel(1) = - ball_vel(1);
        end
    
        if ball_pos(2) > 10
            ball_vel(2) = - ball_vel(2); 
        end
    

        if ball_pos(2) < - 9
            
  
            if abs(block_pos - ball_pos(1)) > 2
                
                ball.Color = rand(1,3);          
                ball_pos(2) = 9;
                
       
            else 
                ball_vel(2) = - ball_vel(2);
            end
        end
        
    
        
        ball_pos  = ball_pos  + ball_vel;
        block_pos = block_pos + block_vel;
        
    
        
        set(ball, ...
            'XData', ball_pos(1), ...
            'YData', ball_pos(2));
        
        set(block, ...
            'XData', [ block_pos-1, block_pos+1], ...
            'YData', [ -9, -9]);
        

        
        pause(.01);
    end


    
    delete(gcf);
    

    
    function key_down(~, event)
        switch event.Key
            case 'leftarrow',  block_vel = -.2; 
            case 'rightarrow', block_vel =  .2;
        end
    end

    function key_up(~, ~)
        block_vel = 0;
    end



    function close_window(~,~)
        program_on = 0;
    end
end