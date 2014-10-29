.class public abstract Lcom/instagram/bugreport/a/b;
.super Lcom/instagram/common/a/a/a;
.source "FlytrapRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/common/a/a/a",
        "<",
        "Lcom/instagram/bugreport/a/e;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/instagram/common/a/a/a;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/instagram/bugreport/a/b;->a:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/instagram/bugreport/a/b;->b:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/instagram/bugreport/a/b;->d:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/instagram/bugreport/a/b;->e:Ljava/lang/String;

    .line 50
    iput-object p5, p0, Lcom/instagram/bugreport/a/b;->f:Ljava/lang/String;

    .line 51
    return-void
.end method


# virtual methods
.method public a()Lcom/instagram/common/a/c/b;
    .locals 6

    .prologue
    .line 60
    new-instance v3, Lcom/instagram/common/a/c/b;

    invoke-direct {v3}, Lcom/instagram/common/a/c/b;-><init>()V

    .line 61
    const-string v0, "user_identifier"

    iget-object v1, p0, Lcom/instagram/bugreport/a/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "client_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    div-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "config_id"

    iget-object v1, p0, Lcom/instagram/bugreport/a/b;->f:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/d/c/a;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/instagram/api/b/a;

    invoke-direct {v0}, Lcom/instagram/api/b/a;-><init>()V

    .line 67
    const-string v1, "IG_Username"

    iget-object v2, p0, Lcom/instagram/bugreport/a/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v1, "Git_Hash"

    iget-object v2, p0, Lcom/instagram/bugreport/a/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/common/s/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v1, "Build_Num"

    iget-object v2, p0, Lcom/instagram/bugreport/a/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/common/s/a;->a(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;I)V

    .line 70
    const-string v1, "Branch"

    iget-object v2, p0, Lcom/instagram/bugreport/a/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/instagram/common/s/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v1, "OS_Version"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v1, "Manufacturer"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v1, "Model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v1, "Locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v4}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v1, "Build_Type"

    invoke-static {}, Lcom/instagram/common/s/b;->a()Lcom/instagram/common/s/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instagram/common/s/b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    new-instance v1, Lcom/instagram/api/b/a;

    invoke-direct {v1}, Lcom/instagram/api/b/a;-><init>()V

    .line 78
    const-string v2, "description"

    iget-object v4, p0, Lcom/instagram/bugreport/a/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v2, "category_id"

    iget-object v4, p0, Lcom/instagram/bugreport/a/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "misc_info"

    invoke-virtual {v0}, Lcom/instagram/api/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/instagram/api/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v0, "metadata"

    invoke-virtual {v1}, Lcom/instagram/api/b/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/instagram/bugreport/a/b;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "file"

    const-string v2, "bugreport.png"

    const-string v4, "image/png"

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->h:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 93
    const-string v1, "attachments"

    .line 94
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-static {v0}, Lcom/instagram/common/y/e;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v5, "text/plain"

    invoke-virtual {v3, v1, v4, v0, v5}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    .line 94
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 106
    :cond_2
    return-object v3
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/instagram/bugreport/a/b;->g:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    iput-object p1, p0, Lcom/instagram/bugreport/a/b;->h:Ljava/util/ArrayList;

    .line 125
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 55
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method public final d()Lcom/instagram/common/a/a/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/a/a/n",
            "<",
            "Lcom/instagram/bugreport/a/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v0, Lcom/instagram/bugreport/a/c;

    invoke-direct {v0, p0}, Lcom/instagram/bugreport/a/c;-><init>(Lcom/instagram/bugreport/a/b;)V

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/instagram/bugreport/a/b;->h:Ljava/util/ArrayList;

    return-object v0
.end method
