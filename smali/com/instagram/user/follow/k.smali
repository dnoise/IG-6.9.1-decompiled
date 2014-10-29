.class public final Lcom/instagram/user/follow/k;
.super Lcom/instagram/api/j/b;
.source "FollowStatusUpdateRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/b",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/instagram/user/c/a;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/user/c/a;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-static {}, Lcom/instagram/user/follow/k;->m()Lcom/instagram/api/j/a;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/instagram/api/j/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 29
    iput p3, p0, Lcom/instagram/user/follow/k;->d:I

    .line 30
    iput-object p4, p0, Lcom/instagram/user/follow/k;->a:Lcom/instagram/user/c/a;

    .line 31
    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 51
    sget-object v0, Lcom/instagram/user/follow/m;->a:[I

    add-int/lit8 v1, p0, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    const-string v0, "create"

    goto :goto_0

    .line 56
    :pswitch_1
    const-string v0, "destroy"

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "ignore"

    goto :goto_0

    .line 60
    :pswitch_3
    const-string v0, "approve"

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static m()Lcom/instagram/api/j/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/api/j/a",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Lcom/instagram/user/follow/l;

    invoke-direct {v0}, Lcom/instagram/user/follow/l;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/instagram/api/j/j;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {}, Lcom/instagram/user/follow/n;->a()Lcom/instagram/user/follow/n;

    iget-object v0, p0, Lcom/instagram/user/follow/k;->a:Lcom/instagram/user/c/a;

    invoke-static {v0}, Lcom/instagram/user/follow/n;->b(Lcom/instagram/user/c/a;)V

    .line 92
    return-void
.end method

.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 78
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/instagram/user/follow/k;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public final b(Lcom/instagram/api/j/j;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/instagram/user/follow/n;->a()Lcom/instagram/user/follow/n;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/user/follow/k;->a:Lcom/instagram/user/c/a;

    invoke-virtual {p1}, Lcom/instagram/api/j/j;->l()Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    const-string v3, "friendship_status"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/instagram/user/follow/n;->a(Lcom/instagram/user/c/a;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/instagram/api/j/b;)V

    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final c(Lcom/instagram/api/j/j;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/j",
            "<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 4

    .prologue
    .line 47
    const-string v0, "friendships/%s/%s/"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/instagram/user/follow/k;->d:I

    invoke-static {v3}, Lcom/instagram/user/follow/k;->a(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/instagram/user/follow/k;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v3}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()V
    .locals 4

    .prologue
    .line 35
    invoke-super {p0}, Lcom/instagram/api/j/b;->g()V

    .line 36
    invoke-static {}, Lcom/instagram/common/t/b;->a()Lcom/instagram/common/t/b;

    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Lcom/instagram/common/analytics/b;

    const-string v2, "follow_button_tapped"

    invoke-virtual {v0}, Lcom/instagram/common/t/b;->b()Lcom/instagram/common/analytics/g;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V

    const-string v2, "request_type"

    iget v3, p0, Lcom/instagram/user/follow/k;->d:I

    invoke-static {v3}, Lcom/instagram/user/follow/k;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v1

    const-string v2, "nav_events"

    invoke-virtual {v0}, Lcom/instagram/common/t/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    .line 43
    :cond_0
    return-void
.end method
