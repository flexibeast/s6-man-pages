MANPATH ?= /usr/share/man
man1 = $(MANPATH)/man1/
man7 = $(MANPATH)/man7/

man1_targets = \
	s6-accessrules-cdb-from-fs.1 \
	s6-accessrules-fs-from-cdb.1 \
	s6-applyuidgid.1 \
	s6-cleanfifodir.1 \
	s6-connlimit.1 \
	s6-envdir.1 \
	s6-envuidgid.1 \
	s6-fdholder-daemon.1 \
	s6-fdholder-delete.1 \
	s6-fdholder-getdump.1 \
	s6-fdholder-list.1 \
	s6-fdholder-retrieve.1 \
	s6-fdholder-setdump.1 \
	s6-fdholder-store.1 \
	s6-fdholder-transferdump.1 \
	s6-fdholderd.1 \
	s6-fghack.1 \
	s6-ftrig-listen.1 \
	s6-ftrig-listen1.1 \
	s6-ftrig-notify.1 \
	s6-ftrig-wait.1 \
	s6-ftrigrd.1 \
	s6-ioconnect.1 \
	s6-ipcclient.1 \
	s6-ipcserver-access.1 \
	s6-ipcserver-socketbinder.1 \
	s6-ipcserver.1 \
	s6-ipcserverd.1 \
	s6-log.1 \
	s6-mkfifodir.1 \
	s6-notifyoncheck.1 \
	s6-permafailon.1 \
	s6-s6lockd.1 \
	s6-setlock.1 \
	s6-setsid.1 \
	s6-setuidgid.1 \
	s6-softlimit.1 \
	s6-sudo.1 \
	s6-sudoc.1 \
	s6-sudod.1 \
	s6-supervise.1 \
	s6-svc.1 \
	s6-svdt-clear.1 \
	s6-svdt.1 \
	s6-svlisten.1 \
	s6-svlisten1.1 \
	s6-svok.1 \
	s6-svperms.1 \
	s6-svscan.1 \
	s6-svscanctl.1 \
	s6-svstat.1 \
	s6-svwait.1 \
	s6-tai64n.1 \
	s6-tai64nlocal.1 \
	s6-usertree-maker.1 \
	s6lockd-helper.1 \
	ucspilogd.1

man7_targets = \
	s6-accessrules.7 \
	s6-fdholder-error-codes.7 \
	s6-fdholder.7 \
	s6-fifodir.7 \
	s6-ftrigr.7 \
	s6-ftrigw.7 \
	s6-libftrig.7 \
	s6-libs6.7 \
	s6-local-service.7 \
	s6-notifywhenup.7 \
	s6-s6lock.7 \
	s6-scan-directory.7 \
	s6-service-directory.7

all: install

install:
	install -m 644 $(man1_targets) $(man1)
	install -m 644 $(man7_targets) $(man7)

uninstall:
	cd $(man1); rm -f $(man1_targets)
	cd $(man7); rm -f $(man7_targets)

.PHONY: all install uninstall
