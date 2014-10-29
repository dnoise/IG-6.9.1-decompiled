.class public final Lcom/instagram/model/b/a;
.super Ljava/lang/Object;
.source "Recipient.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/instagram/model/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/instagram/user/c/a;

.field b:Z

.field c:Z

.field d:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method private a(Lcom/instagram/model/b/a;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 102
    iget-boolean v2, p0, Lcom/instagram/model/b/a;->c:Z

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->c()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 103
    iget-boolean v2, p0, Lcom/instagram/model/b/a;->c:Z

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    iget-boolean v2, p0, Lcom/instagram/model/b/a;->d:Z

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->d()Z

    move-result v3

    if-eq v2, v3, :cond_3

    .line 105
    iget-boolean v2, p0, Lcom/instagram/model/b/a;->d:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 106
    :cond_3
    iget-boolean v2, p0, Lcom/instagram/model/b/a;->b:Z

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->b()Z

    move-result v3

    if-eq v2, v3, :cond_4

    .line 107
    iget-boolean v2, p0, Lcom/instagram/model/b/a;->b:Z

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/user/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/instagram/user/c/a;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/instagram/model/b/a;->a:Lcom/instagram/user/c/a;

    return-object v0
.end method

.method public final a(IZ)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 66
    sget-object v0, Lcom/instagram/model/b/b;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_0
    iput-boolean p2, p0, Lcom/instagram/model/b/a;->b:Z

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_1
    iput-boolean p2, p0, Lcom/instagram/model/b/a;->c:Z

    .line 72
    iget-boolean v0, p0, Lcom/instagram/model/b/a;->c:Z

    if-eqz v0, :cond_0

    .line 73
    iput-boolean v2, p0, Lcom/instagram/model/b/a;->b:Z

    goto :goto_0

    .line 77
    :pswitch_2
    iput-boolean p2, p0, Lcom/instagram/model/b/a;->d:Z

    .line 78
    iget-boolean v0, p0, Lcom/instagram/model/b/a;->d:Z

    if-eqz v0, :cond_0

    .line 79
    iput-boolean v2, p0, Lcom/instagram/model/b/a;->b:Z

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 88
    sget-object v0, Lcom/instagram/model/b/b;->a:[I

    add-int/lit8 v1, p1, -0x1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :pswitch_0
    iget-boolean v0, p0, Lcom/instagram/model/b/a;->b:Z

    .line 94
    :goto_0
    return v0

    .line 92
    :pswitch_1
    iget-boolean v0, p0, Lcom/instagram/model/b/a;->c:Z

    goto :goto_0

    .line 94
    :pswitch_2
    iget-boolean v0, p0, Lcom/instagram/model/b/a;->d:Z

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/instagram/model/b/a;->b:Z

    return v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/instagram/model/b/a;->c:Z

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    check-cast p1, Lcom/instagram/model/b/a;

    .end local p1
    invoke-direct {p0, p1}, Lcom/instagram/model/b/a;->a(Lcom/instagram/model/b/a;)I

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/instagram/model/b/a;->d:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 115
    if-ne p0, p1, :cond_1

    .line 120
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 116
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 118
    :cond_3
    check-cast p1, Lcom/instagram/model/b/a;

    .line 120
    .end local p1
    iget-object v2, p0, Lcom/instagram/model/b/a;->a:Lcom/instagram/user/c/a;

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/instagram/model/b/a;->a:Lcom/instagram/user/c/a;

    invoke-virtual {p1}, Lcom/instagram/model/b/a;->a()Lcom/instagram/user/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/user/c/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/instagram/model/b/a;->a:Lcom/instagram/user/c/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/instagram/model/b/a;->a:Lcom/instagram/user/c/a;

    invoke-virtual {v0}, Lcom/instagram/user/c/a;->hashCode()I

    move-result v0

    goto :goto_0
.end method
