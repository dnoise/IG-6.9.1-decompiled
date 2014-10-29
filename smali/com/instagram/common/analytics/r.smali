.class final Lcom/instagram/common/analytics/r;
.super Ljava/lang/Object;
.source "ExtraBundle.java"

# interfaces
.implements Lcom/instagram/common/analytics/t;


# instance fields
.field private final a:Z


# direct methods
.method private constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-boolean p1, p0, Lcom/instagram/common/analytics/r;->a:Z

    .line 197
    return-void
.end method

.method synthetic constructor <init>(ZB)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 191
    invoke-direct {p0, p1}, Lcom/instagram/common/analytics/r;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/h;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/instagram/common/analytics/r;->a:Z

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeBoolean(Z)V

    .line 202
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/instagram/common/analytics/r;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
