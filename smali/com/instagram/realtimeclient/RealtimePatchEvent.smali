.class public Lcom/instagram/realtimeclient/RealtimePatchEvent;
.super Lcom/instagram/realtimeclient/RealtimeEvent;
.source "RealtimePatchEvent.java"


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# instance fields
.field public id:Ljava/lang/String;

.field public operations:Ljava/util/Collection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/realtimeclient/RealtimeOperation;",
            ">;"
        }
    .end annotation
.end field

.field public sequence:Ljava/lang/String;

.field public topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/instagram/realtimeclient/RealtimeEvent;-><init>()V

    return-void
.end method

.method public static compareSequences(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "sequence1"
    .parameter "sequence2"

    .prologue
    .line 21
    if-nez p0, :cond_2

    .line 22
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 22
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 23
    :cond_2
    if-nez p1, :cond_3

    .line 24
    const/4 v0, 0x1

    goto :goto_0

    .line 27
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v0, v1

    .line 29
    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
