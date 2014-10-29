.class public final Lcom/fasterxml/jackson/a/c/k;
.super Ljava/io/Writer;
.source "SegmentedStringWriter.java"


# instance fields
.field protected final a:Lcom/fasterxml/jackson/a/g/o;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/a/g/a;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 24
    new-instance v0, Lcom/fasterxml/jackson/a/g/o;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/a/g/o;-><init>(Lcom/fasterxml/jackson/a/g/a;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/a/g/o;->e()Ljava/lang/String;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/a/g/o;->a()V

    .line 100
    return-object v0
.end method

.method public final append(C)Ljava/io/Writer;
    .locals 0
    .parameter "c"

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/c/k;->write(I)V

    .line 37
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 4
    .parameter "csq"

    .prologue
    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/fasterxml/jackson/a/g/o;->a(Ljava/lang/String;II)V

    .line 45
    return-object p0
.end method

.method public final append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 4
    .parameter "csq"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 51
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/fasterxml/jackson/a/g/o;->a(Ljava/lang/String;II)V

    .line 53
    return-object p0
.end method

.method public final bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/c/k;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/a/c/k;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/a/c/k;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 0

    .prologue
    .line 56
    return-void
.end method

.method public final flush()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public final write(I)V
    .locals 2
    .parameter "c"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/g/o;->a(C)V

    .line 73
    return-void
.end method

.method public final write(Ljava/lang/String;)V
    .locals 3
    .parameter "str"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/a/g/o;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public final write(Ljava/lang/String;II)V
    .locals 1
    .parameter "str"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/g/o;->a(Ljava/lang/String;II)V

    .line 81
    return-void
.end method

.method public final write([C)V
    .locals 3
    .parameter "cbuf"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/a/g/o;->c([CII)V

    .line 63
    return-void
.end method

.method public final write([CII)V
    .locals 1
    .parameter "cbuf"
    .parameter "off"
    .parameter "len"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fasterxml/jackson/a/c/k;->a:Lcom/fasterxml/jackson/a/g/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/a/g/o;->c([CII)V

    .line 68
    return-void
.end method
