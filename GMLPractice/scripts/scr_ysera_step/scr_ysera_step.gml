/// Control Yesera to move

if (m_isAttacking == false && m_isInSkill == false)
{
	if (keyboard_check(ord("A")))
	{
	  x = x - 4;
	  sprite_index = spr_ysera_walk_side;
	  image_xscale = 1;
	  m_playerDirection = PlayerDirection.LEFT;
	}
	else if (keyboard_check(ord("D")))
	{
	  x = x + 4;
	  sprite_index = spr_ysera_walk_side;
	  image_xscale = -1;
	  m_playerDirection = PlayerDirection.RIGHT;
	}
	else if (keyboard_check(ord("W")))
	{
	  y = y - 4;
	  sprite_index = spr_ysera_walk_back;
	  m_playerDirection = PlayerDirection.UP;
	}
	else if (keyboard_check(ord("S")))
	{
	  y = y + 4;
	  sprite_index = spr_ysera_walk_front;
	  m_playerDirection = PlayerDirection.DOWN;
	}
	else
	{
	  sprite_index = spr_ysera_idle;
	}
}

if(keyboard_check(ord("J")))
{
	m_isAttacking = true;
	switch(m_playerDirection)
	{
	  case PlayerDirection.UP:
	    sprite_index = spr_ysera_attack_back;
	    break;
	  case PlayerDirection.DOWN:
	    sprite_index = spr_ysera_attack_front;
	    break;
	  case PlayerDirection.LEFT:
	    sprite_index = spr_ysera_attack_side;
	    break;
	  case PlayerDirection.RIGHT:
	    sprite_index = spr_ysera_attack_side;
	    break;
	}
	image_index = 0;
	m_fired = false;
}
else if(keyboard_check(ord("K"))){
	m_isInSkill = true;
    sprite_index = spr_ysera_skill;
    image_index = 0;
	m_fired = false;
}

if(sprite_index == spr_ysera_attack_side
|| sprite_index == spr_ysera_attack_front
|| sprite_index == spr_ysera_attack_back){
    if(image_index > 2 && m_fired == false){
        instance_create_depth(x, y, -y, obj_ysera_magic_bullet);
        m_fired = true;
    }
}

if(sprite_index == spr_ysera_skill){
    if(image_index > 2 && m_fired == false){
        instance_create_depth(x, y, -y, obj_ysera_skill_effect);
        m_fired = true;
    }
}