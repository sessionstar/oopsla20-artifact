
.PHONY: build
build: build-Calculator build-Fibonacci build-HigherLower build-HTTP build-Negotiation build-OnlineWallet build-SH build-Ticket build-TravelAgency build-TwoBuyer

.PHONY: run
run: 
	sleep 1s; make run-HigherLower 
	sleep 1s; make run-TwoBuyer
	sleep 1s; make run-Negotiation
	sleep 1s; make run-Fibonacci
	sleep 1s; make run-TravelAgency
	sleep 1s; make run-Calculator 
	sleep 1s; make run-SH 
	sleep 1s; make run-OnlineWallet
	sleep 1s; make run-Ticket
	#sleep 1s; make run-HTTP

.PHONY: clean
clean: clean-Calculator clean-Fibonacci clean-HigherLower clean-Negotiation clean-OnlineWallet clean-SH clean-Ticket clean-TravelAgency clean-TwoBuyer


define clean-fsm
	rm -rf $(1)/*.fsm
endef

define clean-endpoint
	rm -f $(1)/$(2)/.depend
	rm -f $(1)/$(2)/_tags
	rm -f $(1)/$(2)/Generated*.fst
	rm -f $(1)/$(2)/*.checked
	rm -f $(1)/$(2)/main.*
	rm -rf $(1)/$(2)/_build
	rm -rf $(1)/$(2)/_output
endef

define build-endpoint
	sessionstar $(1)/$(2) $(3) $(4)
	mv *.fsm $(1)
	mv Generated*.fst $(1)/$(4)
	rm -f $(1)/$(4)/.depend
	make -C $(1)/$(4)
	make -C $(1)/$(4) main.ocaml.exe
endef


.PHONY: build-Calculator
build-Calculator:
	$(call build-endpoint,Calculator,Calc.scr,Calc,C)
	$(call build-endpoint,Calculator,Calc.scr,Calc,S)

.PHONY: run-Calculator
run-Calculator:
	Calculator/S/main.ocaml.exe &
	sleep 1s
	Calculator/C/main.ocaml.exe

.PHONY: clean-Calculator
clean-Calculator:
	$(call clean-fsm,Calculator)
	$(call clean-endpoint,Calculator,C)
	$(call clean-endpoint,Calculator,S)


.PHONY: build-Fibonacci
build-Fibonacci:
	$(call build-endpoint,Fibonacci,Fib.scr,Fib,A)
	$(call build-endpoint,Fibonacci,Fib.scr,Fib,B)

.PHONY: run-Fibonacci
run-Fibonacci:
	Fibonacci/B/main.ocaml.exe &
	sleep 1s
	Fibonacci/A/main.ocaml.exe
	
.PHONY: clean-Fibonacci
clean-Fibonacci:
	$(call clean-fsm,Fibonacci)
	$(call clean-endpoint,Fibonacci,A)
	$(call clean-endpoint,Fibonacci,B)


.PHONY: build-HigherLower
build-HigherLower:
	$(call build-endpoint,HigherLower,HigherLower.scr,HigherLower,A)
	$(call build-endpoint,HigherLower,HigherLower.scr,HigherLower,B)
	$(call build-endpoint,HigherLower,HigherLower.scr,HigherLower,C)

.PHONY: run-HigherLower
run-HigherLower:
	HigherLower/B/main.ocaml.exe &
	HigherLower/C/main.ocaml.exe &
	sleep 1s
	HigherLower/A/main.ocaml.exe
	
.PHONY: clean-HigherLower
clean-HigherLower:
	$(call clean-fsm,Fibonacci)
	$(call clean-endpoint,Fibonacci,A)
	$(call clean-endpoint,Fibonacci,B)
	$(call clean-endpoint,Fibonacci,C)


.PHONY: build-HTTP
build-HTTP:
	cd HTTP && scribblec-assrt.sh Http.scr -z3 -batch -fair -assrt -fsm Http S > Server.fsm
	cd HTTP && ScribbleCodeGen.exe --custom-label --protocol Http --role S -o GeneratedHttpS.fst Server.fsm
	make -C HTTP main.ocaml.exe

.PHONY: clean-HTTP
clean-HTTP:
	rm -f HTTP/Server.fsm
	make -C HTTP clean

.PHONY: run-HTTP
run-HTTP:
	HTTP/main.ocaml.exe


.PHONY: build-Negotiation
build-Negotiation:
	$(call build-endpoint,Negotiation,SapNego.scr,Negotiate,C)
	$(call build-endpoint,Negotiation,SapNego.scr,Negotiate,P)

.PHONY: run-Negotiation
run-Negotiation:
	Negotiation/P/main.ocaml.exe &
	sleep 1s
	Negotiation/C/main.ocaml.exe
	
.PHONY: clean-Negotiation
clean-Negotiation:
	$(call clean-fsm,Negotiation)
	$(call clean-endpoint,Negotiation,C)
	$(call clean-endpoint,Negotiation,P)



.PHONY: build-OnlineWallet
build-OnlineWallet:
	$(call build-endpoint,OnlineWallet,OnlineWallet.scr,OnlineWallet,A)
	$(call build-endpoint,OnlineWallet,OnlineWallet.scr,OnlineWallet,C)
	$(call build-endpoint,OnlineWallet,OnlineWallet.scr,OnlineWallet,S)

.PHONY: run-OnlineWallet
run-OnlineWallet:
	OnlineWallet/A/main.ocaml.exe &
	OnlineWallet/S/main.ocaml.exe &
	sleep 1s
	OnlineWallet/C/main.ocaml.exe
	
.PHONY: clean-OnlineWallet
clean-OnlineWallet:
	$(call clean-fsm,OnlineWallet)
	$(call clean-endpoint,OnlineWallet,A)
	$(call clean-endpoint,OnlineWallet,C)
	$(call clean-endpoint,OnlineWallet,S)


.PHONY: build-SH
build-SH:
	$(call build-endpoint,SH,SH.scr,SH,C)
	$(call build-endpoint,SH,SH.scr,SH,P)
	$(call build-endpoint,SH,SH.scr,SH,R)

.PHONY: run-SH
run-SH:
	SH/C/main.ocaml.exe &
	SH/R/main.ocaml.exe &
	sleep 1s
	SH/P/main.ocaml.exe
	
.PHONY: clean-SH
clean-SH:
	$(call clean-fsm,SH)
	$(call clean-endpoint,SH,C)
	$(call clean-endpoint,SH,P)
	$(call clean-endpoint,SH,R)


.PHONY: build-Ticket
build-Ticket:
	$(call build-endpoint,Ticket,Ticket.scr,Ticket,C)
	$(call build-endpoint,Ticket,Ticket.scr,Ticket,S)

.PHONY: run-Ticket
run-Ticket:
	Ticket/S/main.ocaml.exe &
	sleep 1s
	Ticket/C/main.ocaml.exe
	
.PHONY: clean-Ticket
clean-Ticket:
	$(call clean-fsm,Ticket)
	$(call clean-endpoint,Ticket,C)
	$(call clean-endpoint,Ticket,S)


.PHONY: build-TravelAgency
build-TravelAgency:
	$(call build-endpoint,TravelAgency,TravelAgency.scr,Booking,A)
	$(call build-endpoint,TravelAgency,TravelAgency.scr,Booking,C)
	$(call build-endpoint,TravelAgency,TravelAgency.scr,Booking,S)

.PHONY: run-TravelAgency
run-TravelAgency:
	TravelAgency/A/main.ocaml.exe &
	TravelAgency/S/main.ocaml.exe &
	sleep 1s
	TravelAgency/C/main.ocaml.exe
	
.PHONY: clean-TravelAgency
clean-TravelAgency:
	$(call clean-fsm,TravelAgency)
	$(call clean-endpoint,TravelAgency,A)
	$(call clean-endpoint,TravelAgency,C)
	$(call clean-endpoint,TravelAgency,S)


.PHONY: build-TwoBuyer
build-TwoBuyer:
	$(call build-endpoint,TwoBuyer,TwoBuyer.scr,TwoBuyer,A)
	$(call build-endpoint,TwoBuyer,TwoBuyer.scr,TwoBuyer,B)
	$(call build-endpoint,TwoBuyer,TwoBuyer.scr,TwoBuyer,S)

.PHONY: run-TwoBuyer
run-TwoBuyer:
	TwoBuyer/B/main.ocaml.exe &
	TwoBuyer/S/main.ocaml.exe &
	sleep 1s
	TwoBuyer/A/main.ocaml.exe
	
.PHONY: clean-TwoBuyer
clean-TwoBuyer:
	$(call clean-fsm,TwoBuyer)
	$(call clean-endpoint,TwoBuyer,A)
	$(call clean-endpoint,TwoBuyer,B)
	$(call clean-endpoint,TwoBuyer,S)




