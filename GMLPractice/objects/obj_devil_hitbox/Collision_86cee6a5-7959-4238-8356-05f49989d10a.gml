/// @description Insert description here
// You can write your code in this editor

if(instance_exists(m_attachedParent)){
    with(m_attachedParent){
        m_hp = m_hp - 1;
		show_debug_message("123");
    }
}