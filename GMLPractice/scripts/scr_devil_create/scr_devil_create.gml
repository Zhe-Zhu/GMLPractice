
m_playerDirection = PlayerDirection.DOWN;

m_isAttacking = false;
m_isInSkill = false;
m_fired = false;

image_speed = 0.8;

m_attachedHitbox = instance_create_depth(x, y, -y, obj_devil_hitbox);
m_attachedHitbox.m_attachedParent = id;

m_hp = 2;
m_isDead = false;

