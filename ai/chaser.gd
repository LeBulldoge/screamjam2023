class_name Chaser
extends AIModule

func perform(enemy: Enemy):
    enemy.look_at(enemy.target.position)

    if enemy.position.distance_to(enemy.target.position) > enemy.weapon.range:
        walk(enemy)

func walk(enemy: Enemy):
    enemy.move_and_slide()

    var delta = enemy.get_process_delta_time()
    enemy.velocity = enemy.transform.x * enemy.speed * 50 * delta

