.class public final Lcom/facebook/systrace/a;
.super Ljava/lang/Object;
.source "Systrace.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 29
    invoke-static {}, Lcom/facebook/systrace/e;->b()V

    .line 30
    invoke-static {}, Lcom/facebook/systrace/b;->a()V

    .line 31
    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/facebook/systrace/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->a()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {}, Lcom/facebook/systrace/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {}, Lcom/facebook/systrace/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 180
    invoke-static {}, Lcom/facebook/systrace/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/systrace/TraceDirect;->a(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-static {}, Lcom/facebook/systrace/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->b(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static b()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/facebook/systrace/e;->a()Z

    move-result v0

    return v0
.end method
