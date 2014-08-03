REBAR:=rebar

.PHONY: all erl test clean doc 

all: erl

erl:
	$(REBAR) get-deps compile

test: all
	@mkdir -p .eunit
	#$(REBAR) skip_deps=true eunit
	$(REBAR) skip_deps=true ct

clean:
	$(REBAR) clean
	-rm -rvf deps ebin doc .eunit

doc:
	$(REBAR) doc

