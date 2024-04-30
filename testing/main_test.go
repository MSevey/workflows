package main

import (
	"testing"
)

// Test Hello
func TestHello(t *testing.T) {
	if hello() != "Hello" {
		t.Error("Expected response 'Hello' got", hello())
	}
}
