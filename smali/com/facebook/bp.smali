.class final Lcom/facebook/bp;
.super Ljava/util/HashSet;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 131
    const-string v0, "ads_management"

    invoke-virtual {p0, v0}, Lcom/facebook/bp;->add(Ljava/lang/Object;)Z

    .line 132
    const-string v0, "create_event"

    invoke-virtual {p0, v0}, Lcom/facebook/bp;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v0, "rsvp_event"

    invoke-virtual {p0, v0}, Lcom/facebook/bp;->add(Ljava/lang/Object;)Z

    .line 134
    return-void
.end method
