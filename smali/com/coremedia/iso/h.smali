.class public final Lcom/coremedia/iso/h;
.super Ljava/lang/Object;
.source "IsoTypeWriterVariable.java"


# direct methods
.method public static a(JLjava/nio/ByteBuffer;I)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 24
    packed-switch p3, :pswitch_data_0

    .line 41
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "I don\'t know how to read "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :pswitch_1
    const-wide/16 v0, 0xff

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {p2, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    .line 39
    :goto_0
    return-void

    .line 29
    :pswitch_2
    const-wide/32 v0, 0xffff

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {p2, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 32
    :pswitch_3
    const-wide/32 v0, 0xffffff

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {p2, v0}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    .line 35
    :pswitch_4
    invoke-static {p2, p0, p1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 38
    :pswitch_5
    invoke-static {p2, p0, p1}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
