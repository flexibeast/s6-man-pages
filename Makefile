DESTDIR  =
PREFIX   = /usr
MAN_DIR ?= $(PREFIX)/share/man
man7_dir = $(MAN_DIR)/man7
man8_dir = $(MAN_DIR)/man8

man7_targets = \
	s6-accessrules.7 \
	s6-fdholder-error-codes.7 \
	s6-fdholder.7 \
	s6-fifodir.7 \
	s6-ftrigr.7 \
	s6-ftrigw.7 \
	s6-instanced-service.7 \
	s6-libftrig.7 \
	s6-libs6.7 \
	s6-local-service.7 \
	s6-notifywhenup.7 \
	s6-overview.7 \
	s6-s6lock.7 \
	s6-scan-directory.7 \
	s6-service-directory.7 \
	s6-socket-activation.7 \
	s6-svscan-as-process-1.7 \
	s6-svscan-not-as-process-1.7

man8_targets = \
	s6-accessrules-cdb-from-fs.8 \
	s6-accessrules-fs-from-cdb.8 \
	s6-applyuidgid.8 \
	s6-cleanfifodir.8 \
	s6-connlimit.8 \
	s6-envdir.8 \
	s6-envuidgid.8 \
	s6-fdholder-daemon.8 \
	s6-fdholder-delete.8 \
	s6-fdholder-getdump.8 \
	s6-fdholder-list.8 \
	s6-fdholder-retrieve.8 \
	s6-fdholder-setdump.8 \
	s6-fdholder-store.8 \
	s6-fdholder-transferdump.8 \
	s6-fdholderd.8 \
	s6-fghack.8 \
	s6-ftrig-listen.8 \
	s6-ftrig-listen1.8 \
	s6-ftrig-notify.8 \
	s6-ftrig-wait.8 \
	s6-ftrigrd.8 \
	s6-instance-control.8 \
	s6-instance-create.8 \
	s6-instance-delete.8 \
	s6-instance-list.8 \
	s6-instance-maker.8 \
	s6-instance-status.8 \
	s6-ioconnect.8 \
	s6-ipcclient.8 \
	s6-ipcserver-access.8 \
	s6-ipcserver-socketbinder.8 \
	s6-ipcserver.8 \
	s6-ipcserverd.8 \
	s6-log.8 \
	s6-mkfifodir.8 \
	s6-notifyoncheck.8 \
	s6-permafailon.8 \
	s6lockd.8 \
	s6-setlock.8 \
	s6-setsid.8 \
	s6-setuidgid.8 \
	s6-socklog.8 \
	s6-softlimit.8 \
	s6-sudo.8 \
	s6-sudoc.8 \
	s6-sudod.8 \
	s6-supervise.8 \
	s6-svc.8 \
	s6-svdt-clear.8 \
	s6-svdt.8 \
	s6-svlink.8 \
	s6-svlisten.8 \
	s6-svlisten1.8 \
	s6-svok.8 \
	s6-svperms.8 \
	s6-svscan.8 \
	s6-svscanctl.8 \
	s6-svstat.8 \
	s6-svunlink.8 \
	s6-svwait.8 \
	s6-tai64n.8 \
	s6-tai64nlocal.8 \
	s6-usertree-maker.8 \
	s6lockd-helper.8 \
	ucspilogd.8

all:
	@echo "Nothing to be done. Ready for 'make install'."

install:
	cd man7; install -D -m 0644 -t ${DESTDIR}${man7_dir} $(man7_targets)
	cd man8; install -D -m 0644 -t ${DESTDIR}${man8_dir} $(man8_targets)

uninstall:
	cd $(man7_dir); rm -f $(man7_targets)
	cd $(man8_dir); rm -f $(man8_targets)

.PHONY: all install uninstall
