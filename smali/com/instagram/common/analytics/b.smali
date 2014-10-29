.class public Lcom/instagram/common/analytics/b;
.super Ljava/lang/Object;
.source "AnalyticsEvent.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/instagram/common/analytics/q;

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/instagram/common/analytics/g;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lcom/instagram/common/analytics/q;

    invoke-direct {v0}, Lcom/instagram/common/analytics/q;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/q;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/instagram/common/analytics/b;->c:J

    .line 14
    iput-object p1, p0, Lcom/instagram/common/analytics/b;->a:Ljava/lang/String;

    .line 15
    if-eqz p2, :cond_0

    .line 16
    invoke-interface {p2}, Lcom/instagram/common/analytics/g;->j_()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/analytics/b;->d:Ljava/lang/String;

    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/instagram/common/analytics/b;
    .locals 1
    .parameter

    .prologue
    .line 29
    const-string v0, "pk"

    invoke-virtual {p0, v0, p1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/common/analytics/q;->a(Ljava/lang/String;D)V

    .line 67
    return-object p0
.end method

.method public final a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/q;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/common/analytics/q;->a(Ljava/lang/String;I)V

    .line 62
    return-object p0
.end method

.method public final a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/instagram/common/analytics/q;->a(Ljava/lang/String;J)V

    .line 72
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/q;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/common/analytics/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Lcom/instagram/common/analytics/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/q;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/common/analytics/q;->a(Ljava/lang/String;Z)V

    .line 77
    return-object p0
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Lcom/instagram/common/analytics/b;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/q;

    invoke-virtual {v0, p1, p2}, Lcom/instagram/common/analytics/q;->a(Ljava/lang/String;[Ljava/lang/String;)V

    .line 82
    return-object p0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/instagram/common/analytics/d;->a(Lcom/instagram/common/analytics/b;)V

    .line 26
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/instagram/common/analytics/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 97
    iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/q;

    invoke-virtual {v0, p1}, Lcom/instagram/common/analytics/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/instagram/common/analytics/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/instagram/common/analytics/b;->c:J

    return-wide v0
.end method

.method final e()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/q;

    invoke-virtual {v0}, Lcom/instagram/common/analytics/q;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final f()Lcom/instagram/common/analytics/q;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/q;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\n| extra = {\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/common/analytics/b;->b:Lcom/instagram/common/analytics/q;

    const-string v2, "|   "

    invoke-virtual {v1, v2}, Lcom/instagram/common/analytics/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "| }\n| module = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/analytics/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n| name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/analytics/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n| time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/instagram/common/analytics/b;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
