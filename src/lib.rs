use gdnative::prelude::*;

mod placeholder;

fn init(handle: InitHandle) {
    handle.add_class::<placeholder::Placeholder>();
}

godot_init!(init);
