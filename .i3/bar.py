from i3pystatus import Status, Module


#class ShutdownButton(Module):
#    output = {
#        "full_text": "",
#    }
#    def on_leftclick(self):
#        import subprocess
#        subprocess.Popen(["/home/dasdy/.i3/shutdown_menu.sh"])


status = Status(standalone=True)

#status.register(ShutdownButton())

status.register("clock",
            format="%Y-%m-%d %H:%M:%S")

status.register("shell",
    command = "xkblayout-state print %s | awk '{print toupper($0)}'",
    format=" {output}",
    interval = 1,
    on_leftclick = "xkblayout-state set +1",
    on_rightclick = "run",
    )

status.register

status.register("cpu_usage_graph",
                format=" {cpu_graph}")
status.register("mem_bar",
                format=" {used_mem_bar}")

status.register("temp",
    format="{temp:.0f}°C",)

status.register("online",
                format_online="NET:",
                format_offline="NET:",
                color="#00FF00")

status.register("pulseaudio",
    format="♪{volume}%",)

status.register("now_playing",
                format="{status} {artist} - {title}")

status.run()
